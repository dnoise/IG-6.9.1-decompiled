.class final Lcom/instagram/f/d/b;
.super Ljava/lang/Object;
.source "DirectShareRecipientsStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/f/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/f/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/f/d/b;->a:Lcom/instagram/f/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/a;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p1, Lcom/instagram/user/c/a;

    .end local p1
    check-cast p2, Lcom/instagram/user/c/a;

    .end local p2
    invoke-static {p1, p2}, Lcom/instagram/f/d/b;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/a;)I

    move-result v0

    return v0
.end method
