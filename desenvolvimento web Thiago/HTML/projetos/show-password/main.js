console.log('hello')

function hideShowPassword() {
    const inputPassword =
        document.getElementById('password')
    const passwordEye=
        document.getElementById('password-eye ')


    // se o type for password-> muda p text
    // se o type for text -> muda p password

    if (inputPassword.type === 'password'){
        console.log(inputPassword.type, '-> text')
        inputPassword.type = 'text'

        passwordEye.classList.replace('bi-eye-fill', 'bi-eye-slash-fill')
    } 
    
    else {
        console.log (inputPassword.type, '->password')
        inputPassword.type ='password'

        passwordEye.classList.replace('bi-eye-slash-fill', 'bi-eye-fill')
    }
}