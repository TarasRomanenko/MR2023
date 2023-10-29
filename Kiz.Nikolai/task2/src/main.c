#include "MatrixHandler.h"
#include <string.h>

int main()
{   
    Matrix A  = init_matrix(3, 4);
    Matrix B = init_matrix(4, 3);
    double arr1[12] = {2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2};
    double arr2[12] = {3, 3, 3, 3, 3, 12, 3, 3, 3, 3, 3, 30};
    fill_with_data(&A, arr1);
    fill_with_data(&B, arr2);
    print_matrix(&A);
    print_matrix(&B);
    Matrix C = matrix_multiplication(&A, &B);
    print_matrix(&C);
    return 0;
}
