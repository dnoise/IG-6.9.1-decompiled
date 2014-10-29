.class final Lcom/instagram/android/c/b/g;
.super Ljava/lang/Object;
.source "FacebookAccountsGraphRequest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/share/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/c/b/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/c/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/c/b/g;->a:Lcom/instagram/android/c/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/share/b/h;Lcom/instagram/share/b/h;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/instagram/share/b/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/share/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p1, Lcom/instagram/share/b/h;

    .end local p1
    check-cast p2, Lcom/instagram/share/b/h;

    .end local p2
    invoke-static {p1, p2}, Lcom/instagram/android/c/b/g;->a(Lcom/instagram/share/b/h;Lcom/instagram/share/b/h;)I

    move-result v0

    return v0
.end method
