from django import forms
from .models import Topic, Entry

class TopicForm(forms.ModelForm):
    class Meta:
        model = Topic
        fields = ['text']
        labels = {'text': ''}
        widgets = {
            'text': forms.TextInput(attrs={
                'class': 'form-input',
                'placeholder': 'Enter topic name (e.g., Python Programming)',
                'required': True,
            }),
        }
        help_texts = {
            'text': '',
        }

class EntryForm(forms.ModelForm):
    class Meta:
        model = Entry
        fields = ['text']
        labels = {'text': ''}
        widgets = {
            'text': forms.Textarea(attrs={
                'class': 'form-input',
                'placeholder': 'Write your learning entry here...',
                'rows': 8,
                'required': True,
            }),
        }
        help_texts = {
            'text': '',
        }