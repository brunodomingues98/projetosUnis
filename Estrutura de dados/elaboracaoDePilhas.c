#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int* items;
    int size;
    int top;
} Stack;

Stack* create_stack(){
    Stack* stack = (Stack*) malloc(sizeof(Stack));
    stack->size = 0;
    stack->top = -1;
    stack->items = NULL;
    return stack;
}

void push(Stack* stack, int data) {
    stack->size++;
    stack->top++;
    stack->items = (int*) realloc(stack->items, stack->size * sizeof(int));
    stack->items[stack->top] = data;
}

void print_stack(Stack* stack) {
    printf("Pilha: ");
    for (int i = 0; i <= stack->top; i++) {
        printf("%d ", stack->items[i]);
    }
    printf("\n");
}

int pop(Stack* stack) {
    if (stack->top == -1) {
        printf("Erro: pilha vazia\n");
        return -1;
    } else {
        int data = stack->items[stack->top];
        stack->top--;
        stack->size--;
        stack->items = (int*) realloc(stack->items, stack->size * sizeof(int));
        return data;
    }
}

void clear_stack(Stack* stack) {
    stack->size = 0;
    stack->top = -1;
    stack->items = (int*) realloc(stack->items, 0 * sizeof(int));
}

int main () {
    Stack* stack = create_stack();
    int op, data;

    do {
        printf("\n1 - Inserir na Pilha");
        printf("\n2 - Consultar toda pilha");
        printf("\n3 - Remover da Pilha");
        printf("\n4 - Esvaziar a Pilha");
        printf("\n0 - Sair");
        printf("\nEscolha uma opção: ");
        scanf("%d",&op);

        switch (op) {
            case 1:
                printf("\nInforme o valor a ser inserido na pilha: ");
                scanf("%d", &data);
                push(stack, data);
                break;
            case 2:
                print_stack(stack);
                break;
            case 3:
                pop(stack);
                break;
            case 4:
                clear_stack(stack);
                break;
            case 0:
                printf("\nSaindo do programa...");
                break;
            default:
                printf("\n\nOPÇÃO INVÁLIDA\n\n");
        }
    } while (op != 0);

    return 0;
}
