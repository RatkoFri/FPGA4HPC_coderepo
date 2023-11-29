#define BUFFER_SIZE 256

extern "C" {
    void vadd(int* c,
        const int* a,
        const int* b,
        const int n_elements)
    {

        #pragma HLS interface m_axi port=a bundle=aximm1
        #pragma HLS interface m_axi port=b bundle=aximm2
        #pragma HLS interface m_axi port=c bundle=aximm1


        int arrayA[BUFFER_SIZE];
        int arrayB[BUFFER_SIZE];
    
    main_loop:
        for (int i = 0; i < n_elements; i += BUFFER_SIZE)
        {
            int size = BUFFER_SIZE;

            if(i + size > n_elements)
                size = n_elements - i;

        readA:
            for(int j = 0; j < size; j++)
                arrayA[j] = a[i + j];

        readB:
            for(int j = 0; j < size; j++)
                arrayB[j] = b[i + j];

        vadd_writeC:
            for(int j = 0; j < size; j++)
                c[i + j] = arrayA[j] + arrayB[j];
        }
    }
}