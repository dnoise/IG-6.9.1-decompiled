.class abstract Lcom/facebook/o;
.super Lcom/facebook/j;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic b:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/facebook/o;->b:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/c;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 599
    :goto_0
    return v0

    .line 594
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/o;->b:Lcom/facebook/c;

    invoke-virtual {v1}, Lcom/facebook/c;->c()Lcom/facebook/u;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/facebook/u;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v0, 0x1

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    goto :goto_0
.end method
