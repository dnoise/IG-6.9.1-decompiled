.class final Lcom/instagram/creation/photo/crop/p;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/crop/o;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/o;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/p;->a:Lcom/instagram/creation/photo/crop/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/p;->a:Lcom/instagram/creation/photo/crop/o;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/o;->a(Lcom/instagram/creation/photo/crop/o;)Lcom/instagram/creation/photo/crop/y;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/p;->a:Lcom/instagram/creation/photo/crop/o;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/y;->b(Lcom/instagram/creation/photo/crop/aa;)V

    .line 25
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/p;->a:Lcom/instagram/creation/photo/crop/o;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/o;->b(Lcom/instagram/creation/photo/crop/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/p;->a:Lcom/instagram/creation/photo/crop/o;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/o;->b(Lcom/instagram/creation/photo/crop/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 28
    :cond_0
    return-void
.end method
