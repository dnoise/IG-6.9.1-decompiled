.class final Lcom/instagram/creation/photo/crop/e;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/support/v4/app/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/ao",
        "<",
        "Lcom/instagram/creation/photo/crop/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/e;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/creation/photo/crop/x;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/creation/photo/crop/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p1, Lcom/instagram/creation/photo/crop/x;->a:Lcom/instagram/creation/photo/gallery/c;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/gallery/c;)Lcom/instagram/creation/photo/gallery/c;

    .line 267
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p1, Lcom/instagram/creation/photo/crop/x;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p1, Lcom/instagram/creation/photo/crop/x;->c:Lcom/instagram/creation/photo/c/b;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/c/b;)Lcom/instagram/creation/photo/c/b;

    .line 273
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->d(Lcom/instagram/creation/photo/crop/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/photo/crop/f;

    invoke-direct {v1, p0}, Lcom/instagram/creation/photo/crop/f;-><init>(Lcom/instagram/creation/photo/crop/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/creation/photo/crop/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/instagram/creation/photo/crop/w;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/crop/b;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/e;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/photo/crop/w;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    check-cast p2, Lcom/instagram/creation/photo/crop/x;

    invoke-direct {p0, p2}, Lcom/instagram/creation/photo/crop/e;->a(Lcom/instagram/creation/photo/crop/x;)V

    return-void
.end method
