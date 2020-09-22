from django import forms

class SignupForm(forms.Form):
    name = forms.CharField(max_length=200)
    user_name = forms.CharField(max_length=100)
    password = forms.PasswordInput()
    confirm_password = forms.PasswordInput()