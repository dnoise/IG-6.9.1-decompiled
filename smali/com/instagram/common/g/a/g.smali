.class public final Lcom/instagram/common/g/a/g;
.super Ljava/lang/Object;
.source "MediaUri.java"


# static fields
.field public static final a:Lcom/instagram/common/g/a/i;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/instagram/common/g/a/h;

    invoke-direct {v0}, Lcom/instagram/common/g/a/h;-><init>()V

    sput-object v0, Lcom/instagram/common/g/a/g;->a:Lcom/instagram/common/g/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/instagram/common/g/a/g;->b:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/instagram/common/g/a/g;->c:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/instagram/common/g/a/g;->d:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/instagram/common/g/a/g;->e:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/common/g/a/g;->e:Ljava/lang/String;

    return-object v0
.end method
