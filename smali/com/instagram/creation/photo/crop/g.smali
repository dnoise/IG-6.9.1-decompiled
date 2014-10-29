.class final Lcom/instagram/creation/photo/crop/g;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1, v0}, Lcom/instagram/creation/photo/crop/b;->b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
