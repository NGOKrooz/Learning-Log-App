from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class CustomUserCreationForm(UserCreationForm):
    username = forms.CharField(
        max_length=150,
        help_text='',  # Remove default help text
        widget=forms.TextInput(attrs={
            'placeholder': 'Choose a username',
            'class': 'form-input'
        })
    )
    password1 = forms.CharField(
        help_text='',  # Remove default help text
        widget=forms.PasswordInput(attrs={
            'placeholder': 'Create a password',
            'class': 'form-input'
        })
    )
    password2 = forms.CharField(
        help_text='',  # Remove default help text
        widget=forms.PasswordInput(attrs={
            'placeholder': 'Confirm your password',
            'class': 'form-input'
        })
    )

    class Meta:
        model = User
        fields = ('username', 'password1', 'password2')