const {Before, Given, When, Then} = require ('@cucumber/cucumber');
const { expect } = require('chai');
const Lista = require('../../src/lista.js') 

let contexto = {};

Given ('una lista vacía', function () {
    contexto.lista = new Lista();
});

Given('una lista con los siguientes elementos', function (dataTable) {
    contexto.lista = new Lista();
    let elementos = dataTable.rows();
    elementos.forEach((elemento) => {
        contexto.lista.add(elemento[0], elemento[1]);
    });
});

Then ('la lista tiene {int} elemento(s) almacenado(s)', function(cantidad) {
    expect(contexto.lista.count()).to.be.equal(cantidad);
});

Then ('si busco la clave {string} no obtengo ningún valor', function(clave) {
    expect(contexto.lista.find(clave)).to.be.NaN;
});

Then('si busco la clave {string} obtengo el valor {string}', function (clave, valor) {
    expect(contexto.lista.find(clave)).to.be.equal(valor);
});


When('agrego la clave {string} con el valor {string}', function (clave, valor) {
    expect(contexto.lista.add(clave, valor)).to.be.true;
});

Then('si elimino la clave {string} obtengo true', function (clave) {
    expect(contexto.lista.delete(clave)).to.be.true;
});

Then('si elimino la clave {string} obtengo false', function (clave) {
    expect(contexto.lista.delete(clave)).to.be.false;
});

Then('si agrego la clave {int} con valor {string} obtengo false', function (clave, valor) {
    expect(contexto.lista.add(clave, valor)).to.be.false;
});

Then('la lista ordenada de claves es', function (dataTable) {
    // array para ordenar dataTable de claves
    ordenado = [];
    // obtengo filas del dataTable
    temporal = dataTable.rows();
    // agrego cada elemento de la fila del dataTable y agrego a ordenado
    for (valor in temporal) {
        ordenado.push(temporal[valor][0]);
    };
    expect(contexto.lista.getListOrdered()).to.deep.equal(ordenado);
});


