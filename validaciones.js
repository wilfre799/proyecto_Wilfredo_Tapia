function validarFormulario() {
    let esValido = true;
    const campos = ['ci', 'am', 'nombres', 'fec_nac', 'genero', 'direccion'];

    campos.forEach(campo => {
        const valor = document.getElementById(campo).value.trim();
        const errorSpan = document.getElementById(`error_${campo}`);

        if (valor === '') {
            errorSpan.textContent = 'Este campo es obligatorio';
            esValido = false;
        } else {
            errorSpan.textContent = '';
        }
    });

    // Validaciones específicas
    const ci = document.getElementById('ci').value.trim();
    if (!/^\d+$/.test(ci)) {
        document.getElementById('error_ci').textContent = 'El CI debe contener solo números';
        esValido = false;
    }

    const fecNac = new Date(document.getElementById('fec_nac').value);
    const hoy = new Date();
    if (fecNac >= hoy) {
        document.getElementById('error_fec_nac').textContent = 'La fecha de nacimiento no puede ser futura';
        esValido = false;
    }

    return esValido;
}