.class final Lcom/instagram/creation/base/ui/f;
.super Ljava/lang/Object;
.source "FilterPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/creation/base/ui/FilterPicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 199
    new-instance v0, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    invoke-direct {v0, p0}, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 204
    new-array v0, p0, [Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-static {p1}, Lcom/instagram/creation/base/ui/f;->a(Landroid/os/Parcel;)Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-static {p1}, Lcom/instagram/creation/base/ui/f;->a(I)[Lcom/instagram/creation/base/ui/FilterPicker$SavedState;

    move-result-object v0

    return-object v0
.end method
