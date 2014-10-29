.class final Lcom/instagram/android/directshare/d/aa;
.super Lcom/instagram/api/j/a;
.source "DirectSharePermalinkFragment.java"


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
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/d/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/aa;-><init>(Lcom/instagram/android/directshare/d/c;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 1
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
    .line 897
    iget-object v0, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/content/Context;)V

    .line 900
    :cond_0
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    return-void
.end method
