void sieve(int N) {
    bool isPrime[N+1];
    for(int i = 0; i <= N;++i) {
        isPrime[i] = true;
    }
    isPrime[0] = false;
    isPrime[1] = false;
    for(int i = 2; i * i <= N; ++i) {
        if(isPrime[i] == true) {
             // Mark all the multiples of i as composite numbers
            for(int j = i * i; j <= N; j += i)
                isPrime[j] = false;
        }
    }
}



int main()
{
    sieve(100);
}