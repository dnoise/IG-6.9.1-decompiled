.class final Lcom/instagram/android/g/b/b;
.super Lcom/instagram/api/j/a;
.source "UserBlockRequestHelper.java"


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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instagram/user/c/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/instagram/android/g/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/g/b/b;->b:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/instagram/android/g/b/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/android/g/b/b;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/az;->user_blocked:I

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    return-void

    .line 31
    :cond_0
    sget v0, Lcom/facebook/az;->user_unblocked:I

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 39
    iget-object v0, p0, Lcom/instagram/android/g/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/g/b/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/az;->x_problems:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/g/b/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/az;->instagram:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/android/g/b/b;->c()V

    return-void
.end method
