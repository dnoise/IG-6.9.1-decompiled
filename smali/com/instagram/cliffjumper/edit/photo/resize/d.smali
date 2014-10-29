.class final Lcom/instagram/cliffjumper/edit/photo/resize/d;
.super Ljava/lang/Object;
.source "ResizeFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v2, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;-><init>(ZB)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
    .locals 1
    .parameter

    .prologue
    .line 29
    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/d;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/d;->a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/ResizeFilter;

    move-result-object v0

    return-object v0
.end method
