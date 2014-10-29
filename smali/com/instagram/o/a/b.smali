.class final Lcom/instagram/o/a/b;
.super Ljava/lang/Object;
.source "AlertDialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/o/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/o/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/o/a/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/o/a/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/o/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/instagram/o/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/instagram/o/a/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/instagram/o/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/instagram/o/a/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    sget v1, Lcom/facebook/az;->learn_more:I

    new-instance v2, Lcom/instagram/o/a/c;

    invoke-direct {v2, p0}, Lcom/instagram/o/a/c;-><init>(Lcom/instagram/o/a/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 53
    return-void
.end method
