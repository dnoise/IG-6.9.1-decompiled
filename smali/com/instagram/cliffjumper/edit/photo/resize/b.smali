.class final Lcom/instagram/cliffjumper/edit/photo/resize/b;
.super Ljava/lang/Object;
.source "IdentityFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
    .locals 2
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
    .locals 1
    .parameter

    .prologue
    .line 24
    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/b;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/b;->a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;

    move-result-object v0

    return-object v0
.end method
