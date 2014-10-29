.class final Lcom/instagram/creation/photo/crop/k;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/k;->b:Lcom/instagram/creation/photo/crop/b;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/k;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/k;->b:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/k;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->c(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V

    .line 709
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/k;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/crop/m;->g()V

    .line 710
    return-void
.end method
