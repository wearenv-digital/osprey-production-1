//console.log("Hello");

const contactForm = document.getElementById('contact-us-form');

const nameInput = document.getElementById('name');
const emailInput = document.getElementById('email');
const telephoneInput = document.getElementById('telephone');
const messageInput = document.getElementById('Message-body');
const consentInput = document.getElementById('consent-button');
const submitBtn = document.getElementById('submit');

consentInput.style.visibility = 'hidden';

// Drop Zone to be added when client consents

// let dropbox;

// dropbox = document.getElementById('dropbox');
// dropbox.addEventListener('dragenter', dragenter, false);
// dropbox.addEventListener('dragover', dragover, false);
// dropbox.addEventListener('drop', drop, false);

// function dragenter(e) {
// 	e.stopPropagation();
// 	e.preventDefault();
// }

// function dragover(e) {
// 	e.stopPropagation();
// 	e.preventDefault();
// }

// function drop(e) {
// 	e.stopPropagation();
// 	e.preventDefault();

// 	const dt = e.dataTransfer;
// 	const files = dt.files;

// 	handleFiles(files);
// }

// function handleFiles(files) {
// 	for (let i = 0; i < files.length; i++) {
// 		const file = files[i];

// 		const text = document.createElement('p');

// 		text.classList.add('uploaded');
// 		text.file = file;
// 		preview.appendChild(text)

// 	}
// }

const checkName = () => {
	let valid = false;
	const fullName = nameInput.value.trim();
	if (!isRequired(fullName)) {
		showError(nameInput, 'Name field cannot be left blank');
	} else if (!isNameValid(fullName)) {
		showError(nameInput, 'Name must only contain letters');
	} else {
		showSuccess(nameInput);
		valid = true;
	}
	return valid;
};

const checkEmail = () => {
	let valid = false;
	const email = emailInput.value.trim();
	if (!isRequired(email)) {
		showError(emailInput, 'Email field cannot be left blank');
	} else if (!isEmailValid(email)) {
		showError(emailInput, 'Email is not valid');
	} else {
		showSuccess(emailInput);
		valid = true;
	}
	return valid;
};

const checkTelephone = () => {
	let valid = false;
	const telephone = telephoneInput.value.trim();
	if (!isRequired(telephone)) {
		showError(telephoneInput, 'Telephone field cannot be left blank');
	} else if (!isTelephoneValid(telephone)) {
		showError(telephoneInput, 'Number is not valid');
	} else {
		showSuccess(telephoneInput);
		valid = true;
	}
	return valid;
};

const isNameValid = nameInput => {
	const re = /^[a-zA-Z ]+$/;
	return re.test(nameInput);
};

const isEmailValid = emailInput => {
	const re =
		/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(emailInput);
};

const isTelephoneValid = telephoneInput => {
	const re = /^[0-9]+$/;
	return re.test(telephoneInput);
};

const isRequired = value => (value === '' ? false : true);

const showError = (input, message) => {
	const formField = input.parentElement;
	formField.classList.remove('success');
	formField.classList.add('error');
	console.log('input error');
	const error = formField.querySelector('small');
	error.textContent = message;
};

const showSuccess = input => {
	const formField = input.parentElement;
	formField.classList.remove('error');
	formField.classList.add('success');
	console.log('input success');
	const error = formField.querySelector('small');
	error.textContent = '';
};

function showConsent() {
	consentInput.style.visibility = 'visible';
}
function hideConsent() {
	consentInput.style.visibility = 'hidden';
}

let valid = '';

function checkValidity() {
	let valid = false;
	if (checkName() && checkEmail() && checkTelephone() === true) {
		valid = true;
	} else {
		valid = false;
	}
	console.log(valid);
	if (valid === true) {
		showConsent();
	} else {
		hideConsent();
	}
}

// disable the submit button and change the colour on consent

if ((submitBtn.disabled = true)) {
	submitBtn.style.backgroundColor = '#f7f7f7';
}

consentInput.addEventListener('change', function () {
	if (!this.checked) {
		console.log('not checked');
		submitBtn.style.backgroundColor = '#f7f7f7';
		submitBtn.style.cursor = 'default';
		submitBtn.disabled = true;
	} else {
		console.log('checked');
		submitBtn.style.backgroundColor = '#1b70a9';
		submitBtn.style.cursor = 'pointer';
		submitBtn.disabled = false;
	}
});

const successMsg = document.getElementById('success-msg');
const failedMsg = document.getElementById('fail-msg');
const formContainer = document.getElementById('form-container');

successMsg.style.display = 'none';

function successTime() {
	successMsg.style.display = 'block';
	formContainer.style.display = 'none';
}

failedMsg.style.display = 'none';

function errorTime() {
	formContainer.style.display = 'none';
	failedMsg.style.display = 'block';
}

contactForm.addEventListener('submit', async function (e) {
	e.preventDefault();

	let formData = {
		name: nameInput.value,
		email: emailInput.value,
		telephone: telephoneInput.value,
		message: messageInput.value,
		consent: consentInput.value
	};

	try {
		const Response = await fetch('/', {
			method: 'POST',
			body: JSON.stringify(formData),
			headers: {
				'Content-type': 'application/json'
			}
		});
		console.log('status code: ', Response.status);
		if (!Response.ok) {
			console.log(Response);
			throw new Error(`Error! status; ${Response.status}`);
		} else {
			successTime();
		}
		const result = await Response.json();
		return result;
	} catch (err) {
		console.log(err);
	}
});

// contactForm.addEventListener('submit', e => {
// 	e.preventDefault();

// 	let formData = {
// 		name: nameInput.value,
// 		email: emailInput.value,
// 		telephone: telephoneInput.value,
// 		message: messageInput.value,
// 		consent: consentInput.value
// 	};

// 	console.log(formData);

// 	fetch('/', {
// 		method: 'POST',
// 		body: JSON.stringify(formData),
// 		headers: {
// 			'Content-type': 'application/json'
// 		}
// 	})
// 		.then(function (response) {
// 			console.log('response is:' + response);
// 			if (response === 'OK') {
// 				successTime();
// 			}
// 		})
// 		.then(function (data) {
// 			console.log(data);
// 		})
// 		.catch(error => console.error('error', error));
// });

// real time validation
function debounce(fn, delay = 500) {
	let timeoutId;

	return (...args) => {
		if (timeoutId) {
			clearTimeout(timeoutId);
		}
		timeoutId = setTimeout(() => {
			fn.apply(null, args);
		}, delay);
	};
}

//event delegation
contactForm.addEventListener(
	'input',
	debounce(function (e) {
		switch (e.target.id) {
			case 'name':
				checkName();
				break;
			case 'email':
				checkEmail();
				break;
			case 'telephone':
				checkTelephone();
				break;
		}
	})
);

contactForm.addEventListener(
	'input',
	debounce(function (e) {
		checkValidity();
	})
);
