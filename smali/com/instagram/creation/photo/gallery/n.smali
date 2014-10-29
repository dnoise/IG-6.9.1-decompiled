.class public final Lcom/instagram/creation/photo/gallery/n;
.super Ljava/lang/Object;
.source "SingleImageList.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/d;


# instance fields
.field private a:Lcom/instagram/creation/photo/gallery/c;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    .line 40
    new-instance v0, Lcom/instagram/creation/photo/gallery/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/creation/photo/gallery/o;-><init>(Lcom/instagram/creation/photo/gallery/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
    .locals 1
    .parameter

    .prologue
    .line 60
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->a:Lcom/instagram/creation/photo/gallery/c;

    .line 77
    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/n;->b:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
