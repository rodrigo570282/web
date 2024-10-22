console.log('hello')

function hideShowPassword() {
    const inputPassword =
        document.getElementById('password')

    // se o type for password-> muda p text
    // se o type for text -> muda p password

    if (inputPassword.type === 'password'){
        console.log(inputPassword.type, '-> text')
        inputPassword.type = 'text'
    } 
    
    else {
        console.log (inputPassword.type, '->password')
        inputPassword.type ='password'
    }
}