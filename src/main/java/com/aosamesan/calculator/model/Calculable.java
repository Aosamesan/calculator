package com.aosamesan.calculator.model;

public interface Calculable {
    CalculableType getType();

    enum CalculableType {
        OPERAND,
        UNARY_OPERATOR,
        BINARY_OPERATOR
    }
}
