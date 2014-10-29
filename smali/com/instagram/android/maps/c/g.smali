.class final Lcom/instagram/android/maps/c/g;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instagram/android/maps/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/c/c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    iput-boolean p2, p0, Lcom/instagram/android/maps/c/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/instagram/android/maps/c/g;->a:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/c/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/c/h;-><init>(Lcom/instagram/android/maps/c/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    .line 125
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/c/g;->b:Lcom/instagram/android/maps/c/c;

    invoke-static {v0}, Lcom/instagram/android/maps/c/c;->f(Lcom/instagram/android/maps/c/c;)V

    goto :goto_0
.end method
