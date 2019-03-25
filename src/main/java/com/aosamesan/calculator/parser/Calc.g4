grammar Calc;

expression
    :   factor (addSub factor)*
    ;

factor
    :   term (mulDiv term)*
    ;

term
    :   <assoc=right>   atom (POW atom)*
    |   <assoc=right>   atom PER
    |   <assoc=right>   atom FAC
    ;

atom
    :   number
    |   '(' expression ')'
    ;

addSub
    :   ADD
    |   SUB
    |   MOD
    ;

mulDiv
    :   MUL
    |   DIV
    ;

number
    :   NUM
    |   PI
    |   EULER
    ;


ADD:    '+';
SUB:    '-';
MUL:    '*';
DIV:    '/';
POW:    '^';
PER:    '%';
FAC:    '!';

NUM:    [0-9]+('.'[0-9]*)?;
PI:     'π' | 'pi' | 'PI';
EULER:  'e';
MOD:    M   O   D;

fragment M
    :      [mM];
fragment O
    :      [oO];
fragment D
    :      [dD];