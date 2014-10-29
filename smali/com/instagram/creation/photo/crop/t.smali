.class final Lcom/instagram/creation/photo/crop/t;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/c/f;

.field final synthetic b:Z

.field final synthetic c:Lcom/instagram/creation/photo/crop/s;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/s;Lcom/instagram/creation/photo/c/f;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/t;->c:Lcom/instagram/creation/photo/crop/s;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/t;->a:Lcom/instagram/creation/photo/c/f;

    iput-boolean p3, p0, Lcom/instagram/creation/photo/crop/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/t;->c:Lcom/instagram/creation/photo/crop/s;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/t;->a:Lcom/instagram/creation/photo/c/f;

    iget-boolean v2, p0, Lcom/instagram/creation/photo/crop/t;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/photo/crop/s;->a(Lcom/instagram/creation/photo/c/f;Z)V

    .line 167
    return-void
.end method
