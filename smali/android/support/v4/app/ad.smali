.class final Landroid/support/v4/app/ad;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/app/FragmentState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentState;
    .locals 1
    .parameter

    .prologue
    .line 146
    new-instance v0, Landroid/support/v4/app/FragmentState;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Landroid/support/v4/app/FragmentState;
    .locals 1
    .parameter

    .prologue
    .line 150
    new-array v0, p0, [Landroid/support/v4/app/FragmentState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/support/v4/app/ad;->a(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/support/v4/app/ad;->a(I)[Landroid/support/v4/app/FragmentState;

    move-result-object v0

    return-object v0
.end method
