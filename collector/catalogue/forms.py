
from django import forms
from .models import Artist, Album

class ArtistForm(forms.ModelForm):
    class Meta:
        model = Artist
        fields = ['name', 'country']

class AlbumForm(forms.ModelForm):
    class Meta:
        model = Album
        fields = ['name', 'release_date', 'genre', 'producer_name', 'record_label_name', 'comments', 'artist']
