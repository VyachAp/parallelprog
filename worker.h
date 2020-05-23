#include <cstdio>
#include <cstdlib>
#include <pthread.h>
#include <semaphore.h>
#define time 300000
#define N 9240
#define rows 2
#define num_threads 8

float h = 0.1;
float tau = 0.001;

float y[rows][N+1]={0.0};

sem_t right_sem[num_threads];
sem_t left_sem[num_threads];
sem_t row_ready_sem[num_threads];
sem_t go_sem[num_threads];
int counter = 0;
pthread_mutex_t mutex;
pthread_cond_t cond_var;

void print_row(float y[N+1]){
    for(int i=0; i<N+1; i++){
        printf("%06.4f ", y[i]);
    }
    printf("\n");
}

void* swapper(void* rank){
  while(1>0){
    counter++;
    for(auto & i : row_ready_sem){
      sem_wait(&i);
    }

    // pthread_mutex_lock(&mutex);

    for(int i=0; i<N; i++){
      y[0][i] = y[1][i];
    }

    for(auto & i : go_sem){
      sem_post(&i);
    }
    // pthread_mutex_unlock(&mutex);
    // pthread_cond_broadcast(&cond_var);
    // print_row(y[1]);
    if(counter==time){
      break;
    }

  }

  // printf("Swapper finished \n");

  return nullptr;
}


void* do_calc(void* rank){
    long my_rank = (long)rank;
    int start = (int)(my_rank*(N-1)/num_threads+1);
    int stop = (int)((my_rank+1)*(N-1)/num_threads);
    //printf("Thread #%ld satrt: %d stop: %d \n", my_rank, start, stop);

    for(int t=0; t<time; t++){
        // printf("Thread #%ld started at t=%d\n", my_rank, t);
        for(int x=start; x<=stop; x++){

            if(t>0 && x==stop && my_rank<num_threads-1){
              // printf("Thread #%ld stoped at right sem of t=%d\n", my_rank, t);
              sem_wait(&right_sem[my_rank]);
            }
            if(t>0 && x==start && my_rank>0){
              // printf("Thread #%ld stoped at left sem of t=%d\n", my_rank, t);
              sem_wait(&left_sem[my_rank]);
            }

            y[1][x]=y[0][x]+(tau/(h*h))*(y[0][x-1]-2*y[0][x]+y[0][x+1]);

            if(x==start && my_rank>0){
              sem_post(&right_sem[my_rank-1]);
}
            if(x==stop && my_rank<num_threads-1){
              sem_post(&left_sem[my_rank+1]);
            }
        }

        sem_post(&row_ready_sem[my_rank]);
        // printf("Thread #%ld stoped in the end of t=%d\n", my_rank, t);
        sem_wait(&go_sem[my_rank]);
        // while (pthread_cond_wait(&cond_var, &mutex) != 0);

    }

    // printf("Thread #%ld finished ALL\n", my_rank);
    return nullptr;

}
int main() {
    y[0][N/2] = 1;
    // print_row(y[0]);

    for (int i=0; i<num_threads; i++){
      sem_init(&right_sem[i],0,0);
      sem_init(&left_sem[i],0,0);
      sem_init(&row_ready_sem[i],0,0);
      sem_init(&go_sem[i],0,0);
    }
    // pthread_mutex_init(&mutex,NULL);
    // pthread_cond_init(&cond_var,NULL);

    pthread_t threads[num_threads+1];
    long i, rc;
    for (i=0; i<num_threads; i++){
        rc = pthread_create(&threads[i],nullptr,do_calc,(void *) i);
    }

    long mock = 0;
    pthread_create(&threads[num_threads],nullptr,swapper,(void *) mock);

    for (i=0; i<num_threads+1; i++){
        pthread_join(threads[i], nullptr);
}

    for (int i=0; i<num_threads; i++){
      sem_destroy(&right_sem[i]);
      sem_destroy(&left_sem[i]);
      sem_destroy(&row_ready_sem[i]);
      sem_destroy(&go_sem[i]);
    }

    printf("Result: ");
    // print_row(y[1]);

    // pthread_mutex_destroy(&mutex);
    // pthread_cond_destroy(&cond_var);

    return 0;
}

