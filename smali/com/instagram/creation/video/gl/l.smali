.class final Lcom/instagram/creation/video/gl/l;
.super Ljava/lang/Object;
.source "GLRenderContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/creation/video/gl/j;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/gl/j;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;

    const/16 v0, 0x280

    iput v0, p0, Lcom/instagram/creation/video/gl/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/instagram/creation/video/gl/l;->a:I

    iget-object v1, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;

    invoke-static {v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;

    iget v1, p0, Lcom/instagram/creation/video/gl/l;->a:I

    invoke-static {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;I)I

    .line 306
    iget-object v0, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;

    invoke-static {v0}, Lcom/instagram/creation/video/gl/j;->b(Lcom/instagram/creation/video/gl/j;)Lcom/instagram/creation/video/gl/p;

    move-result-object v0

    iget v1, p0, Lcom/instagram/creation/video/gl/l;->a:I

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->b(I)V

    .line 308
    :cond_0
    return-void
.end method
