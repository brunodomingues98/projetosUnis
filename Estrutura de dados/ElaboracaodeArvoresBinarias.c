#include <stdio.h>
#include <stdlib.h>

// Estrutura de um nó da árvore
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Função para criar um novo nó
struct Node* createNode(int value) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = value;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

// Função para inserir um nó na árvore
struct Node* insertNode(struct Node* root, int value) {
    if (root == NULL) {
        return createNode(value);
    } else {
        if (value < root->data) {
            root->left = insertNode(root->left, value);
        } else {
            root->right = insertNode(root->right, value);
        }
        return root;
    }
}

// Função para percorrer a árvore em ordem (in-order)
void inOrderTraversal(struct Node* root) {
    if (root != NULL) {
        inOrderTraversal(root->left);
        printf("%d ", root->data);
        inOrderTraversal(root->right);
    }
}

// Função para percorrer a árvore em pré-ordem (pre-order)
void preOrderTraversal(struct Node* root) {
    if (root != NULL) {
        printf("%d ", root->data);
        preOrderTraversal(root->left);
        preOrderTraversal(root->right);
    }
}

// Função para percorrer a árvore em pós-ordem (post-order)
void postOrderTraversal(struct Node* root) {
    if (root != NULL) {
        postOrderTraversal(root->left);
        postOrderTraversal(root->right);
        printf("%d ", root->data);
    }
}

// Função para encontrar o nó com valor mínimo na árvore
struct Node* findMinValueNode(struct Node* node) {
    struct Node* current = node;
    while (current && current->left != NULL) {
        current = current->left;
    }
    return current;
}

// Função para remover um nó da árvore
struct Node* removeNode(struct Node* root, int value) {
    if (root == NULL) {
        return root;
    } else if (value < root->data) {
        root->left = removeNode(root->left, value);
    } else if (value > root->data) {
        root->right = removeNode(root->right, value);
    } else {
        // Caso 1: Nó sem filhos
        if (root->left == NULL && root->right == NULL) {
            free(root);
            root = NULL;
        }
        // Caso 2: Nó com apenas um filho
        else if (root->left == NULL) {
            struct Node* temp = root;
            root = root->right;
            free(temp);
        } else if (root->right == NULL) {
            struct Node* temp = root;
            root = root->left;
            free(temp);
        }
        // Caso 3: Nó com dois filhos
        else {
            struct Node* minValueNode = findMinValueNode(root->right);
            root->data = minValueNode->data;
            root->right = removeNode(root->right, minValueNode->data);
        }
    }
    return root;
}

// Função para esvaziar a árvore
void clearTree(struct Node* root) {
    if (root != NULL) {
        clearTree(root->left);
        clearTree(root->right);
        free(root);
    }
}

int main() {
    struct Node* root = NULL;
    int choice, value;

    while (1) {
        printf("\nBinary Search Tree Menu\n");
        printf("1. Inserir nó\n");
        printf("2. Listar árvore (em ordem)\n");
        printf("3. Listar árvore (pré-ordem)\n");
        printf("4. Listar árvore (pós-ordem)\n");
        printf("5. Remover nó\n");
        printf("6. Esvaziar árvore\n");
        printf("7. Sair\n");
        printf("Digite sua escolha: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Digite o valor a ser inserido: ");
                scanf("%d", &value);
                root = insertNode(root, value);
                break;
            case 2:
                printf("Árvore (em ordem): ");
                inOrderTraversal(root);
                printf("\n");
                break;
            case 3:
                printf("Árvore (pré-ordem): ");
                preOrderTraversal(root);
                printf("\n");
                break;
            case 4:
                printf("Árvore (pós-ordem): ");
                postOrderTraversal(root);
                printf("\n");
                break;
            case 5:
                printf("Digite o valor a ser removido: ");
                scanf("%d", &value);
                root = removeNode(root, value);
                break;
            case 6:
                clearTree(root);
                root = NULL;
                printf("Árvore esvaziada.\n");
                break;
            case 7:
                clearTree(root);
                printf("Programa encerrado.\n");
                exit(0);
            default:
                printf("Opção inválida. Tente novamente.\n");
        }
    }

    return 0;
}
