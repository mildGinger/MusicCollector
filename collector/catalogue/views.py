from django.shortcuts import render, get_object_or_404, redirect
from .models import Artist, Album
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .forms import ArtistForm, AlbumForm

def index(request):
    return render(request, 'catalogue/index.html')


def artist(request):
    artists = Artist.objects.all()
    return render(request, 'catalogue/artists.html', {'artists': artists})


def artist_detail(request, id):
    artist = get_object_or_404(Artist, id=id)
    albums = Album.objects.filter(artist=artist)
    return render(request, 'catalogue/artist_detail.html', {'artist': artist, 'albums': albums})
    
@login_required    
def add_artist(request):
    if request.method == 'POST':
        form = ArtistForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('artist')
    else:
        form = ArtistForm()
    return render(request, 'catalogue/artist_form.html', {'form': form})

@login_required
def update_artist(request, pk):
    artist = get_object_or_404(Artist, pk=pk)
    if request.method == 'POST':
        form = ArtistForm(request.POST, instance=artist)
        if form.is_valid():
            form.save()
            return redirect('artist')
    else:
        form = ArtistForm(instance=artist)
    return render(request, 'catalogue/artist_form.html', {'form': form})

@login_required
def delete_artist(request, pk):
    artist = get_object_or_404(Artist, pk=pk)
    if request.method == 'POST':
        artist.delete()
        return redirect('artist')
    return render(request, 'catalogue/artist_delete.html', {'artist': artist})


def album(request):
    albums = Album.objects.all()
    return render(request, 'catalogue/albums.html', {'albums': albums})
    

def album_detail(request, id):
    album = get_object_or_404(Album, id=id)
    artist = album.artist
    return render(request, 'catalogue/album_detail.html', {'album': album, 'artist': artist})
    
    
    
    
    
@login_required    
def add_album(request):
    if request.method == 'POST':
        form = AlbumForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('album')
    else:
        form = AlbumForm()
    return render(request, 'catalogue/album_form.html', {'form': form})

@login_required
def update_album(request, pk):
    album = get_object_or_404(Album, pk=pk)
    if request.method == 'POST':
        form = AlbumForm(request.POST, instance=album)
        if form.is_valid():
            form.save()
            return redirect('album')
    else:
        form = AlbumForm(instance=album)
    return render(request, 'catalogue/album_form.html', {'form': form})

@login_required
def delete_album(request, pk):
    album = get_object_or_404(Album, pk=pk)
    if request.method == 'POST':
        album.delete()
        return redirect('album')
    return render(request, 'catalogue/album_delete.html', {'album': album})