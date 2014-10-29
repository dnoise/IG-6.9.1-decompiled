.class final Lcom/instagram/android/login/fragment/by;
.super Ljava/lang/Object;
.source "RegisterParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/android/login/fragment/RegisterParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p0}, Lcom/instagram/android/login/fragment/RegisterParameters;->a(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/android/login/fragment/RegisterParameters;
    .locals 1
    .parameter

    .prologue
    .line 19
    new-array v0, p0, [Lcom/instagram/android/login/fragment/RegisterParameters;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/android/login/fragment/by;->a(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/android/login/fragment/by;->a(I)[Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    return-object v0
.end method
