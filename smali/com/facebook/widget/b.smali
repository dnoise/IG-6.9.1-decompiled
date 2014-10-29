.class final Lcom/facebook/widget/b;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/cc;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->h(Lcom/facebook/widget/LoginButton;)V

    .line 654
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->i(Lcom/facebook/widget/LoginButton;)V

    .line 655
    if-eqz p3, :cond_0

    .line 656
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p3}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/c;->e(Lcom/facebook/widget/c;)Lcom/facebook/cc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/c;->e(Lcom/facebook/widget/c;)Lcom/facebook/cc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/cc;->a(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 662
    :cond_1
    return-void
.end method
