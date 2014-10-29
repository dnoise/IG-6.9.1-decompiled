.class final Lcom/instagram/android/maps/b/c;
.super Ljava/lang/Object;
.source "Quadtree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/maps/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/b/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/instagram/android/maps/b/c;->a:Lcom/instagram/android/maps/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    check-cast p1, Lcom/instagram/android/maps/b/h;

    .end local p1
    check-cast p2, Lcom/instagram/android/maps/b/h;

    .end local p2
    invoke-static {p1, p2}, Lcom/instagram/android/maps/b/c;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)I

    move-result v0

    return v0
.end method
