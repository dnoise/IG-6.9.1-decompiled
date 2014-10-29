.class final Lcom/instagram/android/maps/e/c;
.super Ljava/lang/Object;
.source "PhotoMapsEditManager.java"

# interfaces
.implements Lcom/instagram/android/maps/e/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/e/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/maps/e/c;->a:Lcom/instagram/android/maps/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/maps/e/c;->a:Lcom/instagram/android/maps/e/a;

    invoke-static {v0}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/e/e;

    .line 61
    invoke-interface {v0, p1}, Lcom/instagram/android/maps/e/e;->a(Z)V

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
