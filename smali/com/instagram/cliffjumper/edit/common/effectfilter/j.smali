.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/j;
.super Ljava/lang/Object;
.source "TextureInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;",
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

.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;
    .locals 2
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;
    .locals 1
    .parameter

    .prologue
    .line 21
    new-array v0, p0, [Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/j;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/j;->a(I)[Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    move-result-object v0

    return-object v0
.end method
