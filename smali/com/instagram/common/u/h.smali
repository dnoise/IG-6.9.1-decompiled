.class final Lcom/instagram/common/u/h;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/u/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/u/b;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/common/u/h;->a:Lcom/instagram/common/u/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/common/u/h;->a:Lcom/instagram/common/u/b;

    invoke-static {v0}, Lcom/instagram/common/u/b;->a(Lcom/instagram/common/u/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/u/a;

    .line 140
    invoke-virtual {v0}, Lcom/instagram/common/u/a;->a()Lcom/instagram/common/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/a;->c()V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
