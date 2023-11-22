#include "matrixlib.h"

const struct Matrix MATRIX_NULL = {0, 0, NULL};
const matrix_item RANDOM_LOW = -10., RANDOM_HIGH = 10.;

void matrix_error(enum ErrorType error) {
    switch (error) {
        case incorrect_matrix_err:
            printf("Incalculable or empty matrix error\n");
            break;
         case free_err:
            printf("free matrix error\n");
            break;
        case col_row_err:
            printf("Wrong number of columns or rows\n");
            break;
        case copy_err:
            printf("Memory copy error\n");
            break;
        case memory_err:
            printf("Memory allocation error\n");
            break;
        case det_err:
            printf("Determinant can calculated for 1x1, 2x2 or 3x3 matrix\n");
            break;
        default:
            printf("Undefined error\n");
            break;
    }
}


struct Matrix matrix_allocate(const size_t rows, const size_t cols) {
    if (rows == 0 && cols == 0) 
        return MATRIX_NULL;

    if (rows >= SIZE_MAX / sizeof(matrix_item) / cols) {
        matrix_error(memory_err);
        return MATRIX_NULL;
    }

    struct Matrix M = {cols, rows, NULL};

    M.data = (matrix_item *) malloc(M.cols * M.rows * sizeof(matrix_item));

    if (M.data == NULL) {
        matrix_error(memory_err);
        return MATRIX_NULL;
    }

    return M;
}


void matrix_fill(struct Matrix *M, enum MatrixType matrix_type) {
    switch (matrix_type) {
        case (ZEROS):
            memset(M->data, 0, M->cols * M->rows * sizeof(matrix_item));
            break;

        case (ONES):
            for (size_t idx = 0; idx < M->cols * M->rows; idx++) M->data[idx] = 1.;
            break;

        case (RANDOM):
            for (size_t idx = 0; idx < M->cols * M->rows; idx++)
                M->data[idx] = ((matrix_item) rand() * (RANDOM_HIGH - RANDOM_LOW))
                               / (matrix_item) RAND_MAX + RANDOM_LOW;
            break;

        case (IDEN):
            memset(M->data, 0, M->rows * M->cols * sizeof(matrix_item));
            if (M->cols == M->rows)
                for (size_t row = 0; row < M->rows; row++)
                    for (size_t col = 0; col < M->cols; col++) {
                        if (row == col) M->data[row * M->cols + col] = 1.;
                    }
            else matrix_error(col_row_err);
            break;
    }
}


void matrix_print(const struct Matrix M) {
    if (M.data == NULL) matrix_error(incorrect_matrix_err);

    for (size_t idx = 1; idx <= M.cols * M.rows; ++idx) {
        printf("%.2f \t", M.data[idx - 1]);
        if (idx % M.cols == 0 && idx >= M.cols) printf("\n");
    }
    printf("\n");
}


struct Matrix matrix_create(const size_t rows, const size_t cols, enum MatrixType mat_type) {
    if (rows == 0 && cols == 0) return MATRIX_NULL;

    struct Matrix M = matrix_allocate(rows, cols);

    if (M.data == NULL) return MATRIX_NULL;

    if (rows == 0 || cols == 0) {
        M.rows = rows;
        M.cols = cols;
        M.data = NULL;
        return M;
    }

    matrix_fill(&M, mat_type);

    return M;
}


void matrix_free(struct Matrix *M) {
    if (M->data == NULL) matrix_error(free_err);

    free(M->data);
    *M = MATRIX_NULL;
}


struct Matrix matrix_copy(const struct Matrix A, struct Matrix B) {
    if (A.data == NULL || B.data == NULL) {
        matrix_error(incorrect_matrix_err);
        return MATRIX_NULL;
    }

    matrix_free(&B);

    B = matrix_allocate(A.rows, A.cols);
    memcpy(B.data, A.data, B.cols * B.rows * sizeof(matrix_item));

    if (B.data == NULL) {
        matrix_error(copy_err);
        return MATRIX_NULL;
    }

    return B;
}


struct Matrix matrix_sum(const struct Matrix A, const struct Matrix B) {
    if (A.data == NULL || B.data == NULL) {
        matrix_error(incorrect_matrix_err);
        return MATRIX_NULL;
    }

    if (A.cols != B.cols || A.rows != B.rows) {
        matrix_error(col_row_err);
        return MATRIX_NULL;
    }

    struct Matrix C = matrix_allocate(A.rows, A.cols);

    if (C.data == NULL) return MATRIX_NULL;

    for (size_t idx = 0; idx < A.cols * A.rows; ++idx) C.data[idx] = A.data[idx] + B.data[idx];

    return C;
}


struct Matrix matrix_subtract(const struct Matrix A, const struct Matrix B) {
    if (A.data == NULL || B.data == NULL) {
        matrix_error(incorrect_matrix_err);
        return MATRIX_NULL;
    }

    if (A.cols != B.cols || A.rows != B.rows) {
        matrix_error(col_row_err);
        return MATRIX_NULL;
    }

    struct Matrix C = matrix_allocate(A.rows, A.cols);

    if (C.data == NULL) return MATRIX_NULL;

    for (size_t idx = 0; idx < A.cols * A.rows; ++idx) C.data[idx] = A.data[idx] - B.data[idx];

    return C;
}


struct Matrix matrix_multiply(const struct Matrix A, const double scalar) {
    if (A.data == NULL) {
        matrix_error(incorrect_matrix_err);
        return MATRIX_NULL;
    }

    struct Matrix B = matrix_allocate(A.rows, A.cols);

    if (B.data == NULL) return MATRIX_NULL;

    for (size_t idx = 0; idx < A.rows * A.cols; idx++) B.data[idx] = (matrix_item) scalar * A.data[idx];

    return B;
}





