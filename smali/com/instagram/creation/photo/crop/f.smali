.class final Lcom/instagram/creation/photo/crop/f;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/crop/e;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/e;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/f;->a:Lcom/instagram/creation/photo/crop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/f;->a:Lcom/instagram/creation/photo/crop/e;

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/e;->b:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->c(Lcom/instagram/creation/photo/crop/b;)V

    .line 278
    return-void
.end method
