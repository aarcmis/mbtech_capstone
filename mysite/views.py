from django.shortcuts import render


def home(request):
    return render(
        request,
        "home.html",
    )

def ims(request):
    return render(request, "ims.html")

def lcm(request):
    return render(request, "lcm.html")