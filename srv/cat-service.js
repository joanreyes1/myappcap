module.exports = (srv) => {

    srv.after('READ', 'Sales', (each) => {
        if (each.nombres == 'Francisco') each.cedula = 1350843323
    })

};