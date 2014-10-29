.class final Lcom/instagram/android/maps/d/m;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Lcom/instagram/android/maps/e/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/maps/d/m;->a:Lcom/instagram/android/maps/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/maps/d/m;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/a/o;->notifyDataSetChanged()V

    .line 46
    return-void
.end method
