.class final Lcom/facebook/f;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/bg;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/f;->b:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/f;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/h;

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/facebook/f;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/h/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
