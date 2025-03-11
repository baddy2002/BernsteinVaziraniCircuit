OPENQASM 2.0;
include "qelib1.inc";

//5 bit + ausiario
qreg q[6];
creg c[5];

//parti da |0>n|1>
x q[5];

//hamanard ad ausiliario
h q[5];

//hamanard agi n bit x
h q[4];
h q[3];
h q[2];
h q[1];
h q[0];

//Uf deve fare CNOT 
//se a!=0 
// Oracle Uf (per a = 25 -> binario 11001)
// CNOT dai bit di a verso l'ausiliario
cx q[0], q[5];  // a_0 = 1
cx q[3], q[5];  // a_3 = 1
cx q[4], q[5];  // a_4 = 1

//hamanard agi n bit x
h q[4];
h q[3];
h q[2];
h q[1];
h q[0];

//misura i primi n stati 
// Misurazione dei primi 5 qubit
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
