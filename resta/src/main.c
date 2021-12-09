#include <argp.h>
#include "stdlib.h"

const char *argp_program_version = "resta 1.0";
const char *argp_program_bug_address = "<araya2001@outlook.es>";

/* Program documentation. */
static char doc[] =
        "resta -- programa que toma 2 dígitos como entrada y retorna la sustracción de estos.";

/* A description of the arguments we accept. */
static char args_doc[] = "";

/* The options we understand. */
static struct argp_option options[] = {
        {"digito1", 'x', "PRIMER DÍGITO: [INT]", 0, "Dígito 1"},
        {"digito2", 'y', "SEGUNDO DÍGITO: [INT]", 0, "Dígito 2"}};

/* Used by main to communicate with parse_opt. */
struct arguments {
    char *arg[1]; /* arg1 */
    int digito1, digito2;
};

/* Parse a single option. */
static error_t parse_opt(int key, char *arg, struct argp_state *state) {
    /* Get the input argument from argp_parse, which we
     know is a pointer to our arguments structure. */
    struct arguments *arguments = state->input;

    int base = 10;
    char *endptr;

    switch (key) {
        case 'x':
            if (strtol(arg, &endptr, base) != 0) {
                arguments->digito1 = (int)strtol(arg, &endptr, base);
            } else {
                return ARGP_ERR_UNKNOWN;
            }
            endptr = NULL;
            break;
        case 'y':
            if (strtol(arg, &endptr, base) != 0) {
                arguments->digito2 = (int)strtol(arg, &endptr, base);
            } else {
                return ARGP_ERR_UNKNOWN;
            }
            endptr = NULL;
            break;
        case ARGP_KEY_ARG:
            if (state->arg_num > 0)
                /* Too many arguments. */
                argp_usage(state);
            arguments->arg[state->arg_num] = arg;
            break;
        default:
            return ARGP_ERR_UNKNOWN;
    }
    return 0;
}

/* Our argp parser. */
static struct argp argp = {options, parse_opt, args_doc, doc};

int main(int argc, char *argv[]) {
    struct arguments arguments;
    arguments.digito1 = 0;
    arguments.digito2 = 0;
    argp_parse(&argp, argc, argv, 0, 0, &arguments);
    int resta = arguments.digito1 - arguments.digito2;
    printf("Resta con dos opciones: \n-> Número 1: %d\n-> Número 2: %d\n-> Resultado: %d\n", arguments.digito1, arguments.digito2, resta);
    return 0;
}
