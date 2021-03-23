
const student_name=document.getElementById('student_name');
const course_title=document.getElementById('course_title');
const phone_number=document.getElementById('phone_number');
const email=document.getElementById('email');
const course_fee=document.getElementById('course_fee');
let error = 0;

//Show input error message

function showError(input,message){
	error++;
    const formControl=input.parentElement;
    formControl.className='form-controls error';
    const small=formControl.querySelector('small');
    small.innerText=message;
}

function showSuccess(input){
    const formControl=input.parentElement;
    formControl.className='form-controls success';

}

//Email

function isValidEmail(email)
{
    const re= /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}





function validate(){

	error = 0;
	
    if(student_name.value===''){
        showError(student_name,'Student name is required');
    }
    else{
        showSuccess(student_name);
    }
    
    if(course_title.value===''){
        showError(course_title,'Course title is required');
    }
    else{
        showSuccess(course_title);
    }
    
    if(phone_number.value===''){
        showError(phone_number,'Phone number is required');
    }
    else{
        showSuccess(phone_number);
    }
    
    if(email.value===''){
        showError(email,'Email is required');
    }else if(!isValidEmail(email.value)){
        showError(email,'Email is not valid');
    }
    else{
        showSuccess(email);
    }

    if(course_fee.value===''){
        showError(course_fee,'course fee is required');
    }
    else{
        showSuccess(course_fee);
    }
    
    if(error > 0){
    
		return false;
	}else{
		return true;
	}

};