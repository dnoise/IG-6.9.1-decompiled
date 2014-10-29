.class final Lcom/instagram/o/a/c;
.super Ljava/lang/Object;
.source "AlertDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/o/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/o/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/o/a/c;->a:Lcom/instagram/o/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/o/a/c;->a:Lcom/instagram/o/a/b;

    iget-object v0, v0, Lcom/instagram/o/a/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/o/a/c;->a:Lcom/instagram/o/a/b;

    iget-object v1, v1, Lcom/instagram/o/a/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/o/a/c;->a:Lcom/instagram/o/a/b;

    iget-object v2, v2, Lcom/instagram/o/a/b;->a:Landroid/content/Context;

    sget v3, Lcom/facebook/az;->learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
