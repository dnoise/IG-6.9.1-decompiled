.class final Lcom/instagram/android/fragment/fu;
.super Lcom/instagram/api/j/a;
.source "UserDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/instagram/android/fragment/fu;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/fo;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fu;-><init>(Lcom/instagram/android/fragment/fo;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/instagram/android/fragment/fu;->a:Lcom/instagram/android/fragment/fo;

    iget-object v0, v0, Lcom/instagram/android/fragment/fo;->ae:Lcom/instagram/user/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Z)V

    .line 530
    sget v0, Lcom/facebook/az;->directshare_action_completed:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 531
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/fragment/fu;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/fo;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 541
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/instagram/android/fragment/fu;->c()V

    return-void
.end method
