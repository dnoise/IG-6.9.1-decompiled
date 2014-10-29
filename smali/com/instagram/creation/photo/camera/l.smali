.class final Lcom/instagram/creation/photo/camera/l;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->p(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/k;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->j(Lcom/instagram/creation/photo/camera/c;)I

    move-result v0

    iget-object v2, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v2}, Lcom/instagram/creation/photo/camera/c;->r(Lcom/instagram/creation/photo/camera/c;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->s(Lcom/instagram/creation/photo/camera/c;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;I)V

    .line 1279
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/camera/c;->V()V

    .line 1280
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/l;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->r(Lcom/instagram/creation/photo/camera/c;)I

    move-result v0

    goto :goto_0
.end method
