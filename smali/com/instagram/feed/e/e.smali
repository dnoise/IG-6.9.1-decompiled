.class final Lcom/instagram/feed/e/e;
.super Ljava/lang/Object;
.source "MegaphoneDismissDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/c;


# direct methods
.method private constructor <init>(Lcom/instagram/feed/e/c;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/feed/e/e;->a:Lcom/instagram/feed/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/feed/e/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/instagram/feed/e/e;-><init>(Lcom/instagram/feed/e/c;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/instagram/feed/e/e;->a:Lcom/instagram/feed/e/c;

    invoke-static {v0}, Lcom/instagram/feed/e/c;->b(Lcom/instagram/feed/e/c;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    .line 62
    iget-object v1, p0, Lcom/instagram/feed/e/e;->a:Lcom/instagram/feed/e/c;

    invoke-static {v1}, Lcom/instagram/feed/e/c;->c(Lcom/instagram/feed/e/c;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->megaphone_dismiss:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/instagram/feed/e/e;->a:Lcom/instagram/feed/e/c;

    invoke-static {v0}, Lcom/instagram/feed/e/c;->e(Lcom/instagram/feed/e/c;)Lcom/instagram/feed/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/e/e;->a:Lcom/instagram/feed/e/c;

    invoke-static {v1}, Lcom/instagram/feed/e/c;->d(Lcom/instagram/feed/e/c;)Lcom/instagram/feed/f/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/feed/e/b;->b(Lcom/instagram/feed/f/d;)V

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Menu item click not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
