.class final Lcom/instagram/android/directshare/c/u;
.super Ljava/lang/Object;
.source "InboxStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/t;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/directshare/c/u;->a:Lcom/instagram/android/directshare/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/d/l;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->l()Ljava/lang/Long;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->l()Ljava/lang/Long;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p1, Lcom/instagram/feed/d/l;

    .end local p1
    check-cast p2, Lcom/instagram/feed/d/l;

    .end local p2
    invoke-static {p1, p2}, Lcom/instagram/android/directshare/c/u;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/d/l;)I

    move-result v0

    return v0
.end method
