.class final Lcom/instagram/android/fragment/dx;
.super Lcom/instagram/common/a/a/j;
.source "ReportProblemFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/du;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/du;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/du;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/dx;-><init>(Lcom/instagram/android/fragment/du;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/du;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->thanks_for_feedback:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-static {v0}, Lcom/instagram/android/fragment/du;->b(Lcom/instagram/android/fragment/du;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/dy;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/dy;-><init>(Lcom/instagram/android/fragment/dx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 140
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/bugreport/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/du;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 145
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/instagram/android/fragment/dx;->c()V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/bugreport/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-static {v0}, Lcom/instagram/android/fragment/du;->c(Lcom/instagram/android/fragment/du;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-virtual {v2}, Lcom/instagram/android/fragment/du;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->request_error:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->ok:I

    new-instance v3, Lcom/instagram/android/fragment/dz;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/dz;-><init>(Lcom/instagram/android/fragment/dx;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/du;->a(Lcom/instagram/android/fragment/du;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    invoke-static {v0}, Lcom/instagram/android/fragment/du;->d(Lcom/instagram/android/fragment/du;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 175
    return-void
.end method
