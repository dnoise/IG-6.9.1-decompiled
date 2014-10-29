.class final Lcom/facebook/g;
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
    .line 317
    iput-object p1, p0, Lcom/facebook/g;->b:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/g;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bn;)V
    .locals 3
    .parameter

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/a;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/facebook/h/a;->a()Lcom/facebook/h/g;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/h/g;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 325
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/h/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/b;

    .line 328
    iget-object v1, p0, Lcom/facebook/g;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/h/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
